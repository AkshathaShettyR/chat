<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Chat_details extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

//        return parent::toArray($request);
        return [
            'id' => $this->id,
            'group_id' =>$this->group_id,
            'chat_from' =>$this->chat_from,
            'chat_to' =>$this->chat_to,
            'chat_text' =>$this->chat_text,
            'chat_files' =>$this->chat_files,
            'created_by' =>$this->created_by,
            'created_at' => $this->created_at->format('d/m/Y'),
            'updated_at' => $this->updated_at->format('d/m/Y'),
        ];
    }
}
