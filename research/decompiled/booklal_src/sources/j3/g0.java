package j3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    public static final g0 f8051a;

    /* renamed from: b  reason: collision with root package name */
    public static final g0 f8052b;

    /* renamed from: c  reason: collision with root package name */
    public static final g0 f8053c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ g0[] f8054d;

    /* JADX WARN: Type inference failed for: r0v0, types: [j3.g0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j3.g0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [j3.g0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [j3.g0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [j3.g0, java.lang.Enum] */
    static {
        ?? r02 = new Enum("UNARY", 0);
        f8051a = r02;
        ?? r12 = new Enum("CLIENT_STREAMING", 1);
        ?? r22 = new Enum("SERVER_STREAMING", 2);
        f8052b = r22;
        ?? r32 = new Enum("BIDI_STREAMING", 3);
        f8053c = r32;
        f8054d = new g0[]{r02, r12, r22, r32, new Enum("UNKNOWN", 4)};
    }

    public static g0 valueOf(String str) {
        return (g0) Enum.valueOf(g0.class, str);
    }

    public static g0[] values() {
        return (g0[]) f8054d.clone();
    }
}
