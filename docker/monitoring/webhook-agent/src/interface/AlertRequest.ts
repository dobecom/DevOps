import { BadRequestException } from '@nestjs/common';

export interface AlertRequest {
  label: string;
  instance: string;
  job: string;
  description: string;
  severity: string;
  alerts: any[];
}

export const toAlertRequest = (req: any): AlertRequest => {
  if (
    !req.body['commonLabels'] ||
    !req.body['commonAnnotations'] ||
    !req.body['alerts']
  ) {
    throw new BadRequestException('Invalid request');
  }
  return {
    label: req.body['commonLabels'].alertname,
    instance: req.body['commonLabels'].instance,
    job: req.body['commonLabels'].job,
    description: req.body['commonAnnotations'].description,
    severity: req.body['commonLabels'].severity,
    alerts: req.body['alerts'],
  } as AlertRequest;
};
