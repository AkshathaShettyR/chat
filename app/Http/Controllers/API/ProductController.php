<?php

namespace App\Http\Controllers\API;

use App\ChatDetails;
use App\GroupDetails;
use App\GroupMaster;
use App\Http\Resources\Chat_details;
use App\Http\Resources\Product;
use App\Http\Resources\Product as ProductResource;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Validator;
use App\Http\Resources\Group_details;
use Illuminate\Support\Facades\Auth;

class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $products = User::all();

        return $this->sendResponse(ProductResource::collection($products), 'Products retrieved successfully.');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $input = $request->all();
//        'group_name', 'created_by','created_at','updated_by','updated_at'
        $validator = Validator::make($input, [
            'group_name' => 'required',
            'created_by' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product = GroupMaster::create($input);

        return $this->sendResponse(new ProductResource($product), 'Group created successfully.');
    }
    public function groupdetails(Request $request)
    {
        $input = $request->all();
// 'group_id', 'user_id','created_by','created_at','updated_by','updated_at'
        $validator = Validator::make($input, [
            'group_id' => 'required',
            'user_id' => 'required',
            'created_by' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product = GroupDetails::create($input);

        return $this->sendResponse(new Group_details($product), 'Group Details created successfully.');
    }

    public function chatdetails(Request $request)
    {
        $input = $request->all();

        $group_id=$request->group_id;
        $chat_from=$request->chat_from;
        $chat_to=$request->chat_to;
        $chat_text=$request->chat_text;
        $chat_files=$request->chat_files;
        $createdby=$request->chat_from;

//        dd($group_id,$chat_from,$chat_to,$chat_text,$chat_files,$created_by);
//    'group_id', 'chat_from','chat_to','chat_text','chat_files','created_by','created_at','updated_by','updated_at'
        $validator = Validator::make($input, [
            'group_id' => 'required',
            'chat_from' => 'required',
            'chat_to' => 'required|string',
            'chat_text' => 'required',
            'chat_files' => 'required|mimes:jpeg,png,jpg,bmp,pdf,docx',
//            'created_by' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }
        $created_by = array('created_by'=>$createdby);
    $data = array_merge($input, $created_by);
//        dd($data);

        //work on file upload
        if($file   =   $request->file('chat_files')) {
//            dd($file);
            $name = date('Y-m-d-') . time() . '.' . $file->getClientOriginalExtension();
//            dd($name);
            $target_path = public_path('/uploads/');
            $chat_file=('/uploads/'.$name);
//            dd($target_path);
            if ($file->move($target_path, $name)) {
//                dd($file->move($target_path, $name));
                $file=array('chat_files' => $chat_file);
                $data = array_merge($input, $file,$created_by);
                // save file name in the database
                $product = ChatDetails::create($data);
            }
            broadcast(new MessageSent($chat_to, $chat_text))->toOthers();
        }

        return $this->sendResponse(new Chat_details($product), 'Chat Details created successfully.');
    }

    /**
     *
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);

        if (is_null($product)) {
            return $this->sendError('Product not found.');
        }

        return $this->sendResponse(new ProductResource($product), 'Product retrieved successfully.');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update_groupname(Request $request)
    {
        $input = $request->all();
//dd($input);
        $validator = Validator::make($input, [
            'group_id'=>'required',
            'group_name' => 'required',
            'updated_by' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $post = GroupMaster::find($input['group_id']);
        $post->fill($request->input())->save();
        return $this->sendResponse(new ProductResource($post), 'Group Name updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete_groupname( Request $request)
    {
        $input=$request->all();

        $validator = Validator::make($input, [
            'id'=>'required',
        ]);
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $post = GroupMaster::find($input['id']);
        $post->fill($request->input())->delete();

        return $this->sendResponse([], 'Group deleted successfully.');

    }

    public function group_list(Request $request)
    {
        $input = $request->all();
//dd($input);
        $validator = Validator::make($input, [
            'user_id'=>'required',
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

//        $group_details->user_id = $input['user_id'];
//        $group_details->get();
//        $product->save();

        $group_details = GroupDetails :: where('user_id', $input['user_id'])->get();
//        $group_details->$this->attributes->group_id;
//        dd($group_details->data);
        if (is_null($group_details)) {
            return $this->sendError('Group list not found.');
        }

        return $this->sendResponse($group_details, 'Group list retrieved successfully.');
    }

    public function delete_group_user(Request $request)
    {
        $input=$request->all();
//        dd($input);

        $validator = Validator::make($input, [
            'group_id'=>'required',
            'user_id'=>'required',
        ]);
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }
        $group_details = GroupDetails :: where('user_id', $input['user_id'])
            ->where('group_id', $input['group_id'])->delete();
//        $post = GroupMaster::find($input['id']);
//        $group_details->delete();

        return $this->sendResponse([], 'User removed from the group successfully.');

    }

    public function logout(Request $request)
    {
        Auth::logout();
        return $this->sendResponse([], 'Logged out successfully.');
    }

    public function add_user_to_group(Request $request)
    {
        $input = $request->all();
//        'group_name', 'created_by','created_at','updated_by','updated_at'
        $validator = Validator::make($input, [
            'group_id' => 'required',
            'user_id' => 'required',
            'created_by' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }
//        $group_details = GroupDetails :: where('user_id', $input['user_id'])
//            ->where('group_id', $input['group_id'])->delete();

        $product = GroupDetails::create($input);

        return $this->sendResponse(new Group_details($product), 'User Added to Group successfully.');
    }

    public function user_list()
    {
        $products = User::all();

        return $this->sendResponse(($products), 'Users List retrieved successfully.');
    }
    public function student_list(Request $request)
    {

        $group_details = User :: where('role', "student")->get();
        if (is_null($group_details)) {
            return $this->sendError('Student list not found.');
        }
        return $this->sendResponse($group_details, 'Student list retrieved successfully.');
    }
    public function teacher_list(Request $request)
    {

        $group_details = User :: where('role', "teacher")->get();
        if (is_null($group_details)) {
            return $this->sendError('Teachers list not found.');
        }
        return $this->sendResponse($group_details, 'Teachers list retrieved successfully.');
    }
}
