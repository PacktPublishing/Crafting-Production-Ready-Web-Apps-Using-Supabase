/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  rewrites: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
    },
  ],
};

module.exports = nextConfig;
