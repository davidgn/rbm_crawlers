package p;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import b.C0274b;
import b.InterfaceC0276d;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0276d f9818a;

    /* renamed from: b  reason: collision with root package name */
    public final ComponentName f9819b;

    public g(InterfaceC0276d interfaceC0276d, ComponentName componentName) {
        this.f9818a = interfaceC0276d;
        this.f9819b = componentName;
    }

    public static String a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList<String> arrayList = new ArrayList();
        ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://")), 0);
        if (resolveActivity != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            arrayList = arrayList2;
        }
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        for (String str2 : arrayList) {
            intent.setPackage(str2);
            if (packageManager.resolveService(intent, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            Log.w("CustomTabsClient", "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName.");
        }
        return null;
    }

    public final n b(AbstractC0760a abstractC0760a) {
        f fVar = new f(abstractC0760a);
        InterfaceC0276d interfaceC0276d = this.f9818a;
        try {
            if (((C0274b) interfaceC0276d).b(fVar)) {
                return new n(interfaceC0276d, fVar, this.f9819b);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }
}
