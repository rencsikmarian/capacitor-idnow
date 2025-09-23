import { WebPlugin } from '@capacitor/core';

import type { IdNowPlugin } from './definitions';

export class IdNowWeb extends WebPlugin implements IdNowPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
