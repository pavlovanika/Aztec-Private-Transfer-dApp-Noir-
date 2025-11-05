// app.nr
use dep::std;

fn main() {
    // Simple Aztec dApp logic: private token transfer simulation in Noir
    let sender_balance_before = 1000;
    let receiver_balance_before = 250;
    let transfer_amount = 120;

    assert(sender_balance_before >= transfer_amount, "Insufficient funds");

    let sender_balance_after = sender_balance_before - transfer_amount;
    let receiver_balance_after = receiver_balance_before + transfer_amount;

    std::println("💸 Executing private Aztec transfer...");
    std::println("Sender balance: {} → {}", sender_balance_before, sender_balance_after);
    std::println("Receiver balance: {} → {}", receiver_balance_before, receiver_balance_after);

    // Zero-knowledge proof simulation (Pedersen commitment)
    let proof_commitment = std::hash::pedersen(["Aztec", "PrivateTransfer", "OK"]);
    std::println("🧩 Generated ZK proof commitment: {}", proof_commitment);
    std::println("✅ Transfer verified within Aztec dApp circuit");
}
