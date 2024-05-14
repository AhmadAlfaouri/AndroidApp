<?php

namespace App\Http\Traits;

trait GeneralTrait
{
    public function returnMSG($text)
    {

        return response()->json(['msg' => $text], 200);
    }

    public function returnError($text, $numError)
    {

        return response()->json([
            'msg' => $text,
            'numError' => $numError
        ], $numError);
    }

    public function returnData($key, $value, $msg)
    {

        return response()->json([
            'msg' => $msg,
            $key => $value,
        ], 200);
    }

    public function returnAuth()
    {
        return response()->json([
            "message" => "Unauthenticated."
        ], 401);
    }
}
