package j3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class y0 {

    /* renamed from: a  reason: collision with root package name */
    public static final y0 f8165a;

    /* renamed from: b  reason: collision with root package name */
    public static final y0 f8166b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ y0[] f8167c;
    /* JADX INFO: Fake field, exist only in values array */
    y0 EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [j3.y0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j3.y0, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [j3.y0, java.lang.Enum] */
    static {
        ?? r02 = new Enum("FAKE", 0);
        ?? r12 = new Enum("MTLS", 1);
        f8165a = r12;
        ?? r22 = new Enum("CUSTOM_MANAGERS", 2);
        f8166b = r22;
        f8167c = new y0[]{r02, r12, r22};
    }

    public static y0 valueOf(String str) {
        return (y0) Enum.valueOf(y0.class, str);
    }

    public static y0[] values() {
        return (y0[]) f8167c.clone();
    }
}
