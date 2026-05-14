package h3;

import android.net.Uri;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public Uri f7771a;

    /* renamed from: b  reason: collision with root package name */
    public int f7772b;

    /* renamed from: c  reason: collision with root package name */
    public int f7773c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7774d;

    /* renamed from: e  reason: collision with root package name */
    public int f7775e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7776f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList f7777g;

    /* renamed from: h  reason: collision with root package name */
    public int f7778h;

    public final void a(int i, int i4) {
        if (i < 0) {
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Height must be positive number or 0.");
        }
        if (i4 == 0 && i == 0) {
            throw new IllegalArgumentException("At least one dimension has to be positive number.");
        }
        this.f7772b = i;
        this.f7773c = i4;
    }
}
