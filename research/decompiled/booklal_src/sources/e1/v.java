package e1;

import android.util.Log;
import b1.EnumC0279a;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class v extends Exception {

    /* renamed from: f  reason: collision with root package name */
    public static final StackTraceElement[] f7169f = new StackTraceElement[0];

    /* renamed from: a  reason: collision with root package name */
    public final List f7170a;

    /* renamed from: b  reason: collision with root package name */
    public b1.e f7171b;

    /* renamed from: c  reason: collision with root package name */
    public EnumC0279a f7172c;

    /* renamed from: d  reason: collision with root package name */
    public Class f7173d;

    /* renamed from: e  reason: collision with root package name */
    public final String f7174e;

    public v(String str) {
        this(str, Collections.emptyList());
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof v)) {
            arrayList.add(th);
            return;
        }
        for (Throwable th2 : ((v) th).f7170a) {
            a(th2, arrayList);
        }
    }

    public static void b(List list, u uVar) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            uVar.append("Cause (");
            int i4 = i + 1;
            uVar.append(String.valueOf(i4));
            uVar.append(" of ");
            uVar.append(String.valueOf(size));
            uVar.append("): ");
            Throwable th = (Throwable) list.get(i);
            if (th instanceof v) {
                ((v) th).f(uVar);
            } else {
                c(th, uVar);
            }
            i = i4;
        }
    }

    public static void c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i4 = i + 1;
            sb.append(i4);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i));
            i = i4;
        }
    }

    public final void f(Appendable appendable) {
        c(this, appendable);
        try {
            b(this.f7170a, new u(appendable));
        } catch (IOException e5) {
            throw new RuntimeException(e5);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f7174e);
        String str3 = "";
        if (this.f7173d != null) {
            str = ", " + this.f7173d;
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f7172c != null) {
            str2 = ", " + this.f7172c;
        } else {
            str2 = "";
        }
        sb.append(str2);
        if (this.f7171b != null) {
            str3 = ", " + this.f7171b;
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        f(System.err);
    }

    public v(String str, List list) {
        this.f7174e = str;
        setStackTrace(f7169f);
        this.f7170a = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        f(printWriter);
    }
}
