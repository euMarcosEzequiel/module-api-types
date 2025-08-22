import { ApiProperty } from "@nestjs/swagger";

export class CustomResponse {
  @ApiProperty()
  message: string;
  @ApiProperty()
  object: any
}