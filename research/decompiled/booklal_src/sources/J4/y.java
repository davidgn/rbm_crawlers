package J4;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.util.ArrayList;
import x.AbstractC0973p;
import x.C0970m;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public int f1342a;

    /* renamed from: b  reason: collision with root package name */
    public int f1343b;

    /* renamed from: c  reason: collision with root package name */
    public Object f1344c;

    public y(Context context, XmlResourceParser xmlResourceParser) {
        this.f1344c = new ArrayList();
        this.f1343b = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), AbstractC0973p.f11465h);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.f1342a = obtainStyledAttributes.getResourceId(index, this.f1342a);
            } else if (index == 1) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f1343b);
                this.f1343b = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new C0970m().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        obtainStyledAttributes.recycle();
    }

    public void a() {
        this.f1342a = 0;
        this.f1343b = 0;
    }

    public y(int i) {
        switch (i) {
            case 2:
                this.f1344c = new y[UserVerificationMethods.USER_VERIFY_HANDPRINT];
                this.f1342a = 0;
                this.f1343b = 0;
                return;
            default:
                this.f1344c = new y[UserVerificationMethods.USER_VERIFY_HANDPRINT];
                this.f1342a = 0;
                this.f1343b = 0;
                return;
        }
    }

    public y(int i, int i4, int i5) {
        switch (i5) {
            case 2:
                this.f1344c = null;
                this.f1342a = i;
                int i6 = i4 & 7;
                this.f1343b = i6 == 0 ? 8 : i6;
                return;
            default:
                this.f1344c = null;
                this.f1342a = i;
                int i7 = i4 & 7;
                this.f1343b = i7 == 0 ? 8 : i7;
                return;
        }
    }
}
