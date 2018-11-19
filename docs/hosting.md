## Hosting
[Netlify](https://app.netlify.com/sites/trinaisartsy/) does a really good job so far and seems free for our uses. It triggers when we push to this repo's master, it is deigned for staticly generated content so it's suited well for this, it's free, and it doesn't block us in on what gems we can use. Will follow-up if they start trying to charge us. 

Originally we were using github pages but with the heavy file sizes of the gallery and not wanting to box Trina into any set tag or category taxonomy, we had to make a move.  

## HTTPS

All websites should be served over https, but github pages and many other services do not provide ssl for domains. To work around this, we are using a free Cloudflare account that provides a free shared ssl cert. To enable, we pointed our domain to the cloudflare nameservers. Then by enabling the shared ssl, cloudflare will provide a certificate and terminate on their end, proxying the request to either github pages or netify without issue. It works really well.