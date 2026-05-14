package f0;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: f0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0404b {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0404b f7274a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0404b f7275b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0404b f7276c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0404b f7277d;

    /* renamed from: e  reason: collision with root package name */
    public static final EnumC0404b f7278e;

    /* renamed from: f  reason: collision with root package name */
    public static final EnumC0404b f7279f;

    /* renamed from: l  reason: collision with root package name */
    public static final /* synthetic */ EnumC0404b[] f7280l;
    /* JADX INFO: Fake field, exist only in values array */
    EnumC0404b EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v2, types: [f0.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v2, types: [f0.b, java.lang.Enum] */
    static {
        ?? r02 = new Enum("PENALTY_LOG", 0);
        ?? r12 = new Enum("PENALTY_DEATH", 1);
        ?? r22 = new Enum("DETECT_FRAGMENT_REUSE", 2);
        f7274a = r22;
        ?? r32 = new Enum("DETECT_FRAGMENT_TAG_USAGE", 3);
        f7275b = r32;
        ?? r42 = new Enum("DETECT_RETAIN_INSTANCE_USAGE", 4);
        f7276c = r42;
        ?? r5 = new Enum("DETECT_SET_USER_VISIBLE_HINT", 5);
        f7277d = r5;
        ?? r6 = new Enum("DETECT_TARGET_FRAGMENT_USAGE", 6);
        f7278e = r6;
        ?? r7 = new Enum("DETECT_WRONG_FRAGMENT_CONTAINER", 7);
        f7279f = r7;
        f7280l = new EnumC0404b[]{r02, r12, r22, r32, r42, r5, r6, r7};
    }

    public static EnumC0404b valueOf(String str) {
        return (EnumC0404b) Enum.valueOf(EnumC0404b.class, str);
    }

    public static EnumC0404b[] values() {
        return (EnumC0404b[]) f7280l.clone();
    }
}
