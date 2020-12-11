<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Product extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    public function toArray($request)
    {
        return [
            'id' => $this->id,
                'group_name' => $this->group_name,
//                'created_by' => $this->created_by,
            'updated_by' =>$this->updated_by,
//            'created_at' => $this->created_at->format('d/m/Y'),
            'updated_at' => $this->updated_at->format('d/m/Y'),
        ];
    }

//    public function toArray($request)
//    {
////        $data=$request->data;
////
////        if($request->data!=" "||$request->data!="null")
////        {
//            return [
//                'id' => $this->id,
//                'group_name' => $this->group_name,
//                'created_by' => $this->created_by,
////            'updated_by' =>"2",
//                'created_at' => $this->created_at->format('d/m/Y'),
////            'updated_at' => $this->updated_at->format('d/m/Y'),
//
//            ];
//
////            return [$request];
////        }
////        else {
//////            return['msg'=>'successfully updated'];
////            return [$request];
////        }
//    }

//              return['msg'=>'successfully updated'];


}
