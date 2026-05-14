package E1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f723a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ a[] f724b;
    /* JADX INFO: Fake field, exist only in values array */
    a EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, E1.a] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, E1.a] */
    static {
        ?? r02 = new Enum("ZOOM_IN", 0);
        ?? r12 = new Enum("ZOOM_OUT", 1);
        f723a = r12;
        f724b = new a[]{r02, r12, new Enum("DEPTH_SLIDE", 2), new Enum("CUBE_IN", 3), new Enum("CUBE_OUT", 4), new Enum("FLIP_HORIZONTAL", 5), new Enum("FLIP_VERTICAL", 6), new Enum("FOREGROUND_TO_BACKGROUND", 7), new Enum("BACKGROUND_TO_FOREGROUND", 8), new Enum("ROTATE_UP", 9), new Enum("ROTATE_DOWN", 10), new Enum("GATE", 11), new Enum("TOSS", 12), new Enum("FIDGET_SPINNER", 13)};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f724b.clone();
    }
}
