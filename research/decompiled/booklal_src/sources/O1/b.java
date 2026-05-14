package O1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f2138a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ b[] f2139b;

    /* JADX WARN: Type inference failed for: r0v0, types: [O1.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [O1.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [O1.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [O1.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [O1.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [O1.b, java.lang.Enum] */
    static {
        ?? r02 = new Enum("DEFAULT", 0);
        f2138a = r02;
        f2139b = new b[]{r02, new Enum("PARENT_LEFT", 1), new Enum("PARENT_RIGHT", 2), new Enum("SCREEN_LEFT", 3), new Enum("SCREEN_RIGHT", 4), new Enum("CENTER", 5)};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f2139b.clone();
    }
}
