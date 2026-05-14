package c1;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import b1.EnumC0279a;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: c1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0302b implements e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4835a;

    /* renamed from: b  reason: collision with root package name */
    public Object f4836b;

    /* renamed from: c  reason: collision with root package name */
    public final Comparable f4837c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f4838d;

    public /* synthetic */ AbstractC0302b(int i, Comparable comparable, Object obj) {
        this.f4835a = i;
        this.f4838d = obj;
        this.f4837c = comparable;
    }

    private final void c() {
    }

    private final void f() {
    }

    @Override // c1.e
    public final void b() {
        switch (this.f4835a) {
            case 0:
                Object obj = this.f4836b;
                if (obj != null) {
                    try {
                        g(obj);
                    } catch (IOException unused) {
                        return;
                    }
                }
                return;
            default:
                Object obj2 = this.f4836b;
                if (obj2 != null) {
                    try {
                        g(obj2);
                        return;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                return;
        }
    }

    @Override // c1.e
    public final void cancel() {
        int i = this.f4835a;
    }

    @Override // c1.e
    public final void d(com.bumptech.glide.d dVar, d dVar2) {
        switch (this.f4835a) {
            case 0:
                try {
                    Object h5 = h((AssetManager) this.f4838d, (String) this.f4837c);
                    this.f4836b = h5;
                    dVar2.f(h5);
                    return;
                } catch (IOException e5) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e5);
                    }
                    dVar2.c(e5);
                    return;
                }
            default:
                try {
                    Object i = i((Uri) this.f4837c, (ContentResolver) this.f4838d);
                    this.f4836b = i;
                    dVar2.f(i);
                    return;
                } catch (FileNotFoundException e6) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e6);
                    }
                    dVar2.c(e6);
                    return;
                }
        }
    }

    @Override // c1.e
    public final EnumC0279a e() {
        switch (this.f4835a) {
            case 0:
                return EnumC0279a.f4781a;
            default:
                return EnumC0279a.f4781a;
        }
    }

    public abstract void g(Object obj);

    public abstract Object h(AssetManager assetManager, String str);

    public abstract Object i(Uri uri, ContentResolver contentResolver);
}
