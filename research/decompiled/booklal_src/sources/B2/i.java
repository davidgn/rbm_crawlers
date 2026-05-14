package B2;

import android.graphics.drawable.Drawable;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes2.dex */
public final class i extends r {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f225e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(TextInputLayout textInputLayout, int i, int i4) {
        super(textInputLayout, i);
        this.f225e = i4;
    }

    @Override // B2.r
    public final void a() {
        switch (this.f225e) {
            case 0:
                int i = this.f253d;
                TextInputLayout textInputLayout = this.f250a;
                textInputLayout.setEndIconDrawable(i);
                textInputLayout.setEndIconOnClickListener(null);
                textInputLayout.setEndIconOnLongClickListener(null);
                return;
            default:
                TextInputLayout textInputLayout2 = this.f250a;
                textInputLayout2.setEndIconOnClickListener(null);
                textInputLayout2.setEndIconDrawable((Drawable) null);
                textInputLayout2.setEndIconContentDescription((CharSequence) null);
                return;
        }
    }
}
