package Y0;

import android.app.AlertDialog;
import android.view.View;
/* renamed from: Y0.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0183s0 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3329a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AlertDialog f3330b;

    public /* synthetic */ View$OnClickListenerC0183s0(AlertDialog alertDialog, int i) {
        this.f3329a = i;
        this.f3330b = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3329a) {
            case 0:
                this.f3330b.dismiss();
                return;
            case 1:
                this.f3330b.dismiss();
                return;
            default:
                this.f3330b.dismiss();
                return;
        }
    }
}
