import { registerPlugin } from '@capacitor/core';

import type { IdNowPlugin } from './definitions';

const IdNow = registerPlugin<IdNowPlugin>('IdNow', {
  web: () => import('./web').then((m) => new m.IdNowWeb()),
});

export * from './definitions';
export { IdNow };
