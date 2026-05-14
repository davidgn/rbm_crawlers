package j3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import m3.C0735h;
/* loaded from: classes2.dex */
public final class Z {

    /* renamed from: c  reason: collision with root package name */
    public static final Logger f8017c = Logger.getLogger(Z.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public static Z f8018d;

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashSet f8019a = new LinkedHashSet();

    /* renamed from: b  reason: collision with root package name */
    public List f8020b = Collections.emptyList();

    public static List a() {
        Logger logger = f8017c;
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(C0735h.class);
        } catch (ClassNotFoundException e5) {
            logger.log(Level.FINE, "Unable to find OkHttpChannelProvider", (Throwable) e5);
        }
        try {
            arrayList.add(Class.forName("io.grpc.netty.NettyChannelProvider"));
        } catch (ClassNotFoundException e6) {
            logger.log(Level.FINE, "Unable to find NettyChannelProvider", (Throwable) e6);
        }
        try {
            arrayList.add(Class.forName("io.grpc.netty.UdsNettyChannelProvider"));
        } catch (ClassNotFoundException e7) {
            logger.log(Level.FINE, "Unable to find UdsNettyChannelProvider", (Throwable) e7);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
