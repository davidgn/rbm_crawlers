package s4;

import java.nio.charset.Charset;
/* renamed from: s4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0839a {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f10277a;

    /* renamed from: b  reason: collision with root package name */
    public static volatile Charset f10278b;

    /* renamed from: c  reason: collision with root package name */
    public static volatile Charset f10279c;

    static {
        Charset forName = Charset.forName("UTF-8");
        kotlin.jvm.internal.i.e(forName, "forName(\"UTF-8\")");
        f10277a = forName;
        kotlin.jvm.internal.i.e(Charset.forName("UTF-16"), "forName(\"UTF-16\")");
        kotlin.jvm.internal.i.e(Charset.forName("UTF-16BE"), "forName(\"UTF-16BE\")");
        kotlin.jvm.internal.i.e(Charset.forName("UTF-16LE"), "forName(\"UTF-16LE\")");
        kotlin.jvm.internal.i.e(Charset.forName("US-ASCII"), "forName(\"US-ASCII\")");
        kotlin.jvm.internal.i.e(Charset.forName("ISO-8859-1"), "forName(\"ISO-8859-1\")");
    }
}
