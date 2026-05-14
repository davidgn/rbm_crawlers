package u0;

import M.AbstractC0070a0;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import s.AbstractC0824e;
/* loaded from: classes.dex */
public abstract class W {

    /* renamed from: y  reason: collision with root package name */
    public static final List f10730y = Collections.emptyList();

    /* renamed from: a  reason: collision with root package name */
    public final View f10731a;

    /* renamed from: b  reason: collision with root package name */
    public WeakReference f10732b;
    public int o;

    /* renamed from: w  reason: collision with root package name */
    public RecyclerView f10747w;

    /* renamed from: x  reason: collision with root package name */
    public AbstractC0919y f10748x;

    /* renamed from: c  reason: collision with root package name */
    public int f10733c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f10734d = -1;

    /* renamed from: e  reason: collision with root package name */
    public long f10735e = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f10736f = -1;

    /* renamed from: l  reason: collision with root package name */
    public int f10737l = -1;

    /* renamed from: m  reason: collision with root package name */
    public W f10738m = null;

    /* renamed from: n  reason: collision with root package name */
    public W f10739n = null;

    /* renamed from: p  reason: collision with root package name */
    public final ArrayList f10740p = null;

    /* renamed from: q  reason: collision with root package name */
    public final List f10741q = null;

    /* renamed from: r  reason: collision with root package name */
    public int f10742r = 0;

    /* renamed from: s  reason: collision with root package name */
    public C0886L f10743s = null;

    /* renamed from: t  reason: collision with root package name */
    public boolean f10744t = false;

    /* renamed from: u  reason: collision with root package name */
    public int f10745u = 0;

    /* renamed from: v  reason: collision with root package name */
    public int f10746v = -1;

    public W(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f10731a = view;
    }

    public final void a(int i) {
        this.o = i | this.o;
    }

    public final int b() {
        int i = this.f10737l;
        return i == -1 ? this.f10733c : i;
    }

    public final List c() {
        ArrayList arrayList;
        return ((this.o & UserVerificationMethods.USER_VERIFY_ALL) != 0 || (arrayList = this.f10740p) == null || arrayList.size() == 0) ? f10730y : this.f10741q;
    }

    public final boolean d(int i) {
        return (i & this.o) != 0;
    }

    public final boolean e() {
        View view = this.f10731a;
        return (view.getParent() == null || view.getParent() == this.f10747w) ? false : true;
    }

    public final boolean f() {
        return (this.o & 1) != 0;
    }

    public final boolean g() {
        return (this.o & 4) != 0;
    }

    public final boolean h() {
        if ((this.o & 16) == 0) {
            WeakHashMap weakHashMap = AbstractC0070a0.f1813a;
            if (!this.f10731a.hasTransientState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean i() {
        return (this.o & 8) != 0;
    }

    public final boolean j() {
        return this.f10743s != null;
    }

    public final boolean k() {
        return (this.o & UserVerificationMethods.USER_VERIFY_HANDPRINT) != 0;
    }

    public final boolean l() {
        return (this.o & 2) != 0;
    }

    public final void m(int i, boolean z4) {
        if (this.f10734d == -1) {
            this.f10734d = this.f10733c;
        }
        if (this.f10737l == -1) {
            this.f10737l = this.f10733c;
        }
        if (z4) {
            this.f10737l += i;
        }
        this.f10733c += i;
        View view = this.f10731a;
        if (view.getLayoutParams() != null) {
            ((C0881G) view.getLayoutParams()).f10684c = true;
        }
    }

    public final void n() {
        this.o = 0;
        this.f10733c = -1;
        this.f10734d = -1;
        this.f10735e = -1L;
        this.f10737l = -1;
        this.f10742r = 0;
        this.f10738m = null;
        this.f10739n = null;
        ArrayList arrayList = this.f10740p;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.o &= -1025;
        this.f10745u = 0;
        this.f10746v = -1;
        RecyclerView.j(this);
    }

    public final void o(boolean z4) {
        int i = this.f10742r;
        int i4 = z4 ? i - 1 : i + 1;
        this.f10742r = i4;
        if (i4 < 0) {
            this.f10742r = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z4 && i4 == 1) {
            this.o |= 16;
        } else if (z4 && i4 == 0) {
            this.o &= -17;
        }
    }

    public final boolean p() {
        return (this.o & UserVerificationMethods.USER_VERIFY_PATTERN) != 0;
    }

    public final boolean q() {
        return (this.o & 32) != 0;
    }

    public final String toString() {
        StringBuilder c5 = AbstractC0824e.c(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        c5.append(Integer.toHexString(hashCode()));
        c5.append(" position=");
        c5.append(this.f10733c);
        c5.append(" id=");
        c5.append(this.f10735e);
        c5.append(", oldPos=");
        c5.append(this.f10734d);
        c5.append(", pLpos:");
        c5.append(this.f10737l);
        StringBuilder sb = new StringBuilder(c5.toString());
        if (j()) {
            sb.append(" scrap ");
            sb.append(this.f10744t ? "[changeScrap]" : "[attachedScrap]");
        }
        if (g()) {
            sb.append(" invalid");
        }
        if (!f()) {
            sb.append(" unbound");
        }
        if ((this.o & 2) != 0) {
            sb.append(" update");
        }
        if (i()) {
            sb.append(" removed");
        }
        if (p()) {
            sb.append(" ignored");
        }
        if (k()) {
            sb.append(" tmpDetached");
        }
        if (!h()) {
            sb.append(" not recyclable(" + this.f10742r + ")");
        }
        if ((this.o & 512) != 0 || g()) {
            sb.append(" undefined adapter position");
        }
        if (this.f10731a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
