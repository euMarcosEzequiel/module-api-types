import { ApiProperty } from "@nestjs/swagger";

export abstract class RequestBase {
  @ApiProperty()
  page: number;
  @ApiProperty()
  pageLength: number
}