package androidx.lifecycle;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0261m {
    private static final /* synthetic */ EnumC0261m[] $VALUES;
    public static final C0259k Companion;
    public static final EnumC0261m ON_ANY;
    public static final EnumC0261m ON_CREATE;
    public static final EnumC0261m ON_DESTROY;
    public static final EnumC0261m ON_PAUSE;
    public static final EnumC0261m ON_RESUME;
    public static final EnumC0261m ON_START;
    public static final EnumC0261m ON_STOP;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.lifecycle.k] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.lifecycle.m] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.lifecycle.m] */
    static {
        ?? r02 = new Enum("ON_CREATE", 0);
        ON_CREATE = r02;
        ?? r12 = new Enum("ON_START", 1);
        ON_START = r12;
        ?? r22 = new Enum("ON_RESUME", 2);
        ON_RESUME = r22;
        ?? r32 = new Enum("ON_PAUSE", 3);
        ON_PAUSE = r32;
        ?? r42 = new Enum("ON_STOP", 4);
        ON_STOP = r42;
        ?? r5 = new Enum("ON_DESTROY", 5);
        ON_DESTROY = r5;
        ?? r6 = new Enum("ON_ANY", 6);
        ON_ANY = r6;
        $VALUES = new EnumC0261m[]{r02, r12, r22, r32, r42, r5, r6};
        Companion = new Object();
    }

    public static EnumC0261m valueOf(String str) {
        return (EnumC0261m) Enum.valueOf(EnumC0261m.class, str);
    }

    public static EnumC0261m[] values() {
        return (EnumC0261m[]) $VALUES.clone();
    }

    public final EnumC0262n a() {
        switch (AbstractC0260l.f4452a[ordinal()]) {
            case 1:
            case 2:
                return EnumC0262n.f4455c;
            case 3:
            case 4:
                return EnumC0262n.f4456d;
            case 5:
                return EnumC0262n.f4457e;
            case 6:
                return EnumC0262n.f4453a;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
