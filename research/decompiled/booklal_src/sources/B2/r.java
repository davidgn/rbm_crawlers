package B2;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes2.dex */
public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    public final TextInputLayout f250a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f251b;

    /* renamed from: c  reason: collision with root package name */
    public final CheckableImageButton f252c;

    /* renamed from: d  reason: collision with root package name */
    public final int f253d;

    public r(TextInputLayout textInputLayout, int i) {
        this.f250a = textInputLayout;
        this.f251b = textInputLayout.getContext();
        this.f252c = textInputLayout.getEndIconView();
        this.f253d = i;
    }

    public abstract void a();

    public boolean b(int i) {
        return true;
    }

    public void c(boolean z4) {
    }
}
