import SwiftUI

struct JapaMalaView: View {
    var initialMantra: Mantra? = nil
    
    @State private var count = 0
    @State private var target = 108
    @State private var hapticEnabled = true
    @State private var scale: CGFloat = 1.0
    
    private let impactLight = UIImpactFeedbackGenerator(style: .light)
    private let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
    
    var progress: Double {
        target > 0 ? Double(count) / Double(target) : 0
    }
    
    var body: some View {
        VStack(spacing: 24) {
            if let mantra = initialMantra {
                Text(mantra.sanskrit)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(AppTheme.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .padding(.horizontal)
            }
            
            Spacer()
            
            // Progress ring + count
            ZStack {
                Circle()
                    .stroke(Color.primary.opacity(0.1), lineWidth: 12)
                    .frame(width: 240, height: 240)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        progress >= 1.0 ? Color.green : AppTheme.saffron,
                        style: StrokeStyle(lineWidth: 12, lineCap: .round)
                    )
                    .frame(width: 240, height: 240)
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 0.2), value: count)
                
                VStack(spacing: 4) {
                    Text("\(count)")
                        .font(.system(size: 64, weight: .bold, design: .rounded))
                        .foregroundStyle(AppTheme.deepSaffron)
                        .scaleEffect(scale)
                    Text("of \(target)")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }
            }
            
            // Big TAP button
            Button {
                increment()
            } label: {
                Text("TAP")
                    .font(.title.bold())
                    .tracking(3)
                    .foregroundStyle(.white)
                    .frame(width: 130, height: 130)
                    .background(
                        LinearGradient(colors: [AppTheme.saffron, AppTheme.deepSaffron],
                                       startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .clipShape(Circle())
                    .shadow(color: AppTheme.saffron.opacity(0.45), radius: 16, y: 8)
            }
            .buttonStyle(.plain)
            
            Text("Tap the circle or the button")
                .font(.footnote)
                .foregroundStyle(.secondary)
            
            Spacer()
            
            Text("Traditional japa uses a 108-bead mala.\nOne full round = 108 repetitions.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .padding(.bottom, 20)
        }
        .navigationTitle(initialMantra?.title ?? "Japa Mala")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button {
                        hapticEnabled.toggle()
                    } label: {
                        Image(systemName: hapticEnabled ? "iphone.radiowaves.left.and.right" : "iphone")
                    }
                    Button {
                        count = 0
                        impactLight.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                    }
                }
            }
        }
        .onAppear {
            if let m = initialMantra {
                target = m.recommendedCount
            }
            impactLight.prepare()
            impactHeavy.prepare()
        }
    }
    
    private func increment() {
        count += 1
        if count > target { count = 0 }
        
        withAnimation(.spring(response: 0.2, dampingFraction: 0.5)) {
            scale = 1.12
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
            withAnimation { scale = 1.0 }
        }
        
        if hapticEnabled {
            impactLight.impactOccurred()
        }
        
        if count == target {
            impactHeavy.impactOccurred()
        }
    }
}

#Preview {
    NavigationStack {
        JapaMalaView()
    }
}
