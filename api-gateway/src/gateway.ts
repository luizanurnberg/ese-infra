import express from 'express';
import { createProxyMiddleware } from 'http-proxy-middleware';

const app = express();

app.use('/orders', createProxyMiddleware({
    target: 'http://ese-order:3000',
    changeOrigin: true
}));

app.use('/payments', createProxyMiddleware({
    target: 'http://ese-payment:3000',
    changeOrigin: true
}));

app.use('/api', createProxyMiddleware({
    target: 'http://ese-authentication:3000',
    changeOrigin: true
}));

const PORT = 8080;
app.listen(PORT, () => {
    console.log(`API Gateway rodando na porta ${PORT}`);
});
