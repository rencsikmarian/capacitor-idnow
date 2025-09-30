export interface StartResult {
  status: 'started' | 'completed' | 'cancelled' | 'failed';
  message?: string;
}

export interface IdNowPlugin {
  startIdNowSdk(options: { token: string; language?: string }): Promise<StartResult>;
}
