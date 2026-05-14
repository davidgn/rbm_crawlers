package s4;

import java.io.Serializable;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class d implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final Pattern f10290a;

    public d(String str) {
        Pattern compile = Pattern.compile(str);
        kotlin.jvm.internal.i.e(compile, "compile(pattern)");
        this.f10290a = compile;
    }

    public final String toString() {
        String pattern = this.f10290a.toString();
        kotlin.jvm.internal.i.e(pattern, "nativePattern.toString()");
        return pattern;
    }
}
