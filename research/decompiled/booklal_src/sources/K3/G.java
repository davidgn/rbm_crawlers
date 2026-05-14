package K3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class G implements E3.b {

    /* renamed from: a  reason: collision with root package name */
    public static final G f1476a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ G[] f1477b;

    /* JADX WARN: Type inference failed for: r0v0, types: [K3.G, java.lang.Enum] */
    static {
        ?? r02 = new Enum("INSTANCE", 0);
        f1476a = r02;
        f1477b = new G[]{r02};
    }

    public static G valueOf(String str) {
        return (G) Enum.valueOf(G.class, str);
    }

    public static G[] values() {
        return (G[]) f1477b.clone();
    }

    @Override // E3.b
    public final void accept(Object obj) {
        ((T4.b) obj).f(Long.MAX_VALUE);
    }
}
