import { join } from 'path';
import { Module } from '@nestjs/common';
import { ServeStaticModule } from '@nestjs/serve-static';
import { TweetsModule } from './tweets/tweets.module';

@Module({
  imports: [
    TweetsModule,
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '../../client/dist'),
    }),
  ],
})
export class AppModule {}
