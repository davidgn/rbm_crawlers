package i3;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;
import de.hdodenhof.circleimageview.CircleImageView;
import o2.d;
/* renamed from: i3.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0478a extends ViewOutlineProvider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7856a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f7857b;

    public /* synthetic */ C0478a(View view, int i) {
        this.f7856a = i;
        this.f7857b = view;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f7856a) {
            case 0:
                CircleImageView circleImageView = (CircleImageView) this.f7857b;
                if (circleImageView.f6992y) {
                    ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
                    return;
                }
                Rect rect = new Rect();
                circleImageView.f6975b.roundOut(rect);
                outline.setRoundRect(rect, rect.width() / 2.0f);
                return;
            default:
                d dVar = ((Chip) this.f7857b).f5824e;
                if (dVar != null) {
                    dVar.getOutline(outline);
                    return;
                } else {
                    outline.setAlpha(0.0f);
                    return;
                }
        }
    }
}
