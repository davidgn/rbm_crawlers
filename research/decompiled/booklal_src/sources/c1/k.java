package c1;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class k extends AbstractC0302b {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f4851e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(AssetManager assetManager, String str, int i) {
        super(0, str, assetManager);
        this.f4851e = i;
    }

    @Override // c1.e
    public final Class a() {
        switch (this.f4851e) {
            case 0:
                return ParcelFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }

    @Override // c1.AbstractC0302b
    public final void g(Object obj) {
        switch (this.f4851e) {
            case 0:
                ((ParcelFileDescriptor) obj).close();
                return;
            default:
                ((InputStream) obj).close();
                return;
        }
    }

    @Override // c1.AbstractC0302b
    public final Object h(AssetManager assetManager, String str) {
        switch (this.f4851e) {
            case 0:
                return assetManager.openFd(str).getParcelFileDescriptor();
            default:
                return assetManager.open(str);
        }
    }
}
