package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public final class zzazz {
    private static final String[] zzc = {"/aclk", "/pcs/click", "/dbm/clk"};
    private final String zza = "ad.doubleclick.net";
    private final String[] zzb = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private final zzazu zzd;

    @Deprecated
    public zzazz(zzazu zzazuVar) {
        this.zzd = zzazuVar;
    }

    private final Uri zzf(Uri uri, String str) {
        try {
            if (uri != null) {
                try {
                    if (uri.getHost().equals(this.zza)) {
                        if (uri.getPath().contains(";")) {
                            if (uri.toString().contains("dc_ms=")) {
                                throw new zzbaa("Parameter already exists: dc_ms");
                            }
                            String uri2 = uri.toString();
                            int indexOf = uri2.indexOf(";adurl");
                            if (indexOf != -1) {
                                int i = indexOf + 1;
                                return Uri.parse(uri2.substring(0, i) + "dc_ms=" + str + ";" + uri2.substring(i));
                            }
                            String encodedPath = uri.getEncodedPath();
                            int indexOf2 = uri2.indexOf(encodedPath);
                            return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(indexOf2 + encodedPath.length()));
                        }
                    }
                } catch (NullPointerException unused) {
                }
                if (uri.getQueryParameter("ms") == null) {
                    String uri3 = uri.toString();
                    int indexOf3 = uri3.indexOf("&adurl");
                    if (indexOf3 == -1) {
                        indexOf3 = uri3.indexOf("?adurl");
                    }
                    if (indexOf3 != -1) {
                        int i4 = indexOf3 + 1;
                        return Uri.parse(uri3.substring(0, i4) + "ms=" + str + "&" + uri3.substring(i4));
                    }
                    return uri.buildUpon().appendQueryParameter("ms", str).build();
                }
                throw new zzbaa("Query parameter already exists: ms");
            }
            throw null;
        } catch (UnsupportedOperationException unused2) {
            throw new zzbaa("Provided Uri is not in a valid state");
        }
    }

    public final boolean zza(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.zzb;
            for (int i = 0; i < 3; i++) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    @Deprecated
    public final zzazu zzb() {
        return this.zzd;
    }

    @Deprecated
    public final void zzc(MotionEvent motionEvent) {
        this.zzd.zzd(motionEvent);
    }

    @Deprecated
    public final Uri zzd(Uri uri, Context context, View view, Activity activity) {
        try {
            return zzf(uri, this.zzd.zzf(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzbaa("Provided Uri is not in a valid state");
        }
    }

    public final boolean zze(Uri uri) {
        if (zza(uri)) {
            String[] strArr = zzc;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
        }
        return false;
    }
}
