package C1;

import android.content.Context;
import android.database.DataSetObservable;
import android.view.LayoutInflater;
import java.util.List;
import kotlin.jvm.internal.i;
/* loaded from: classes.dex */
public final class b extends I0.a {

    /* renamed from: a  reason: collision with root package name */
    public final List f324a;

    /* renamed from: b  reason: collision with root package name */
    public final LayoutInflater f325b;

    /* renamed from: c  reason: collision with root package name */
    public F1.b f326c;

    /* renamed from: d  reason: collision with root package name */
    public long f327d;

    /* renamed from: e  reason: collision with root package name */
    public long f328e;

    /* renamed from: f  reason: collision with root package name */
    public final int f329f;

    /* renamed from: g  reason: collision with root package name */
    public final int f330g;

    /* renamed from: h  reason: collision with root package name */
    public final int f331h;
    public final int i;

    /* renamed from: j  reason: collision with root package name */
    public final int f332j;

    /* renamed from: k  reason: collision with root package name */
    public final String f333k;

    /* renamed from: l  reason: collision with root package name */
    public final String f334l;

    public b(Context context, List imageList, int i, int i4, int i5, int i6, int i7, String textAlign, String textColor) {
        i.g(imageList, "imageList");
        i.g(textAlign, "textAlign");
        i.g(textColor, "textColor");
        new DataSetObservable();
        this.f329f = i;
        this.f330g = i4;
        this.f331h = i5;
        this.i = i6;
        this.f332j = i7;
        this.f333k = textAlign;
        this.f334l = textColor;
        this.f324a = imageList;
        if (context != null) {
            this.f325b = (LayoutInflater) context.getSystemService("layout_inflater");
        } else {
            i.k();
            throw null;
        }
    }

    public static int b(String textAlign) {
        i.g(textAlign, "textAlign");
        int hashCode = textAlign.hashCode();
        if (hashCode != 77974012) {
            if (hashCode == 1984282709 && textAlign.equals("CENTER")) {
                return 17;
            }
        } else if (textAlign.equals("RIGHT")) {
            return 5;
        }
        return 3;
    }

    @Override // I0.a
    public final int a() {
        List list = this.f324a;
        if (list != null) {
            return list.size();
        }
        i.k();
        throw null;
    }
}
