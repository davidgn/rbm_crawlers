package e3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7266a;

    /* renamed from: b  reason: collision with root package name */
    public static final j f7267b;

    /* renamed from: c  reason: collision with root package name */
    public static final j f7268c;

    /* renamed from: d  reason: collision with root package name */
    public static final j f7269d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ j[] f7270e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, e3.j] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, e3.j] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, e3.j] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, e3.j] */
    static {
        ?? r02 = new Enum("COUNTRY", 0);
        f7266a = r02;
        ?? r12 = new Enum("COUNTRYandCURRENCY", 1);
        f7267b = r12;
        ?? r22 = new Enum("CURRENCY", 2);
        f7268c = r22;
        ?? r32 = new Enum("CURRENCYandCOUNTRY", 3);
        f7269d = r32;
        f7270e = new j[]{r02, r12, r22, r32};
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f7270e.clone();
    }
}
