import {
  Controller,
  Get,
  HttpCode,
  HttpStatus,
  Post,
  Req,
} from '@nestjs/common';
import { AppService } from './app.service';
import { AlertRequest, toAlertRequest } from './interface/AlertRequest';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post('prom-alert')
  @HttpCode(202)
  sendPrometheusAlert(@Req() req: Request) {
    const request: AlertRequest = toAlertRequest(req);
    this.appService.sendPrometheusAlert(request);
    return HttpStatus.ACCEPTED;
  }
}
