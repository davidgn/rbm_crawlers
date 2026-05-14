package P1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f2210a;

    /* renamed from: b  reason: collision with root package name */
    public static final c f2211b;

    /* renamed from: c  reason: collision with root package name */
    public static final c f2212c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ c[] f2213d;

    /* JADX WARN: Type inference failed for: r0v0, types: [P1.c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [P1.c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [P1.c, java.lang.Enum] */
    static {
        ?? r02 = new Enum("DEFAULT", 0);
        f2210a = r02;
        ?? r12 = new Enum("VERY_LOW", 1);
        f2211b = r12;
        ?? r22 = new Enum("HIGHEST", 2);
        f2212c = r22;
        f2213d = new c[]{r02, r12, r22};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f2213d.clone();
    }
}
