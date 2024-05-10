import express from 'express';
import cors from 'cors';
import cookieParser from 'cookie-parser';
import doctorRoutes from './routes/doctorroute.js';

export const app = express();

app.use(express.json({ type: 'application/json' }));

// app.use((req, res, next) => {
//   let rawData = '';
//   req.setEncoding('utf8');

//   req.on('data', (chunk) => {
//     rawData += chunk;
//   });

//   req.on('end', () => {
//     console.log(`Raw Body: ${rawData}`);
//     next();
//   });
// });


// Remove express.urlencoded() unless you're expecting form data
// app.use(express.urlencoded({ extended: true }));

app.use('/api/doctor', doctorRoutes);

app.use(
  cors({
    origin: process.env.CORS_ORIGINS || 'http://localhost:3000',
    credentials: true,
  })
);

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something went wrong!');
});
