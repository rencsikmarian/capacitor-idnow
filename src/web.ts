import { WebPlugin } from '@capacitor/core';

import type { IdNowPlugin, StartResult } from './definitions';

export class IdNowWeb extends WebPlugin implements IdNowPlugin {
  async startIdNowSdk(_options: { token: string; language?: string }): Promise<StartResult> {
    throw this.unimplemented('IDnow is not available on web.');
  }
}
