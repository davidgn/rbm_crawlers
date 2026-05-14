package j3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    public static final n0 f8081a;

    /* renamed from: b  reason: collision with root package name */
    public static final n0 f8082b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ n0[] f8083c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j3.n0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j3.n0] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, j3.n0] */
    static {
        ?? r02 = new Enum("NONE", 0);
        f8081a = r02;
        ?? r12 = new Enum("INTEGRITY", 1);
        ?? r22 = new Enum("PRIVACY_AND_INTEGRITY", 2);
        f8082b = r22;
        f8083c = new n0[]{r02, r12, r22};
    }

    public static n0 valueOf(String str) {
        return (n0) Enum.valueOf(n0.class, str);
    }

    public static n0[] values() {
        return (n0[]) f8083c.clone();
    }
}
