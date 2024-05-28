import express from 'express';
import {logger} from './middleware/logger';

import apiRoutes from './api/get_keys';


const app = express();
app.use(logger);
app.use('/api', apiRoutes);


const port = 3000;

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
