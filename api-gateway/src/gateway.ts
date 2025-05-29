import express from 'express';
import { createProxyMiddleware } from 'http-proxy-middleware';

const app = express();

app.use('/offers', createProxyMiddleware({
    target: 'http://ese-order:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/offers': '/api/offer',
    }
}));

app.use('/quotations', createProxyMiddleware({
    target: 'http://ese-order:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/quotations': '/api/quotation',
    }
}));

app.use('/payments', createProxyMiddleware({
    target: 'http://ese-payment:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/payments': '/api/payment',
    }
}));

app.use('/address', createProxyMiddleware({
    target: 'http://ese-tracking:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/address': '/api/address',
    }
}));

app.use('/delivery', createProxyMiddleware({
    target: 'http://ese-tracking:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/delivery': '/api/delivery-process',
    }
}));

app.use('/fleet', createProxyMiddleware({
    target: 'http://ese-tracking:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/fleet': '/api/fleet',
    }
}));

app.use('/fleet-vehicle', createProxyMiddleware({
    target: 'http://ese-tracking:3000',
    changeOrigin: true,
    pathRewrite: {
        '^/fleet-vehicle': '/api/fleet-vehicle',
    }
}));

app.use('/api', createProxyMiddleware({
    target: 'http://ese-authentication:3000',
    changeOrigin: true,
}));

const PORT = 8080;
app.listen(PORT, () => {
    console.log(`API Gateway rodando na porta ${PORT}`);
});
