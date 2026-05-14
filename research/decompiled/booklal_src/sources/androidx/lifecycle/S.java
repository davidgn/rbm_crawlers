package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;
/* loaded from: classes.dex */
public abstract class S {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f4431a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashSet f4432b = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f4433c = false;

    public static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    public void b() {
    }
}
