package d1;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f6952c = {"_data"};

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f6953d = {"_data"};

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6954a;

    /* renamed from: b  reason: collision with root package name */
    public final ContentResolver f6955b;

    public /* synthetic */ a(ContentResolver contentResolver, int i) {
        this.f6954a = i;
        this.f6955b = contentResolver;
    }

    @Override // d1.c
    public final Cursor a(Uri uri) {
        switch (this.f6954a) {
            case 0:
                String lastPathSegment = uri.getLastPathSegment();
                return this.f6955b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f6952c, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
            default:
                String lastPathSegment2 = uri.getLastPathSegment();
                return this.f6955b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f6953d, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
        }
    }
}
