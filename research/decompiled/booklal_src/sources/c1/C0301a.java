package c1;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
/* renamed from: c1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0301a extends AbstractC0302b {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f4834e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0301a(ContentResolver contentResolver, Uri uri, int i) {
        super(1, uri, contentResolver);
        this.f4834e = i;
    }

    @Override // c1.e
    public final Class a() {
        switch (this.f4834e) {
            case 0:
                return AssetFileDescriptor.class;
            default:
                return ParcelFileDescriptor.class;
        }
    }

    @Override // c1.AbstractC0302b
    public final void g(Object obj) {
        switch (this.f4834e) {
            case 0:
                ((AssetFileDescriptor) obj).close();
                return;
            default:
                ((ParcelFileDescriptor) obj).close();
                return;
        }
    }

    @Override // c1.AbstractC0302b
    public final Object i(Uri uri, ContentResolver contentResolver) {
        switch (this.f4834e) {
            case 0:
                AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor != null) {
                    return openAssetFileDescriptor;
                }
                throw new FileNotFoundException(e1.i.d(uri, "FileDescriptor is null for: "));
            default:
                AssetFileDescriptor openAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor2 != null) {
                    return openAssetFileDescriptor2.getParcelFileDescriptor();
                }
                throw new FileNotFoundException(e1.i.d(uri, "FileDescriptor is null for: "));
        }
    }
}
