.class public final synthetic LY0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/l;->a:I

    iput-object p1, p0, LY0/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, LY0/l;->b:Ljava/lang/Object;

    iget v2, p0, LY0/l;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lz3/i;

    invoke-static {v1, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->m(Lz3/i;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->e(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LD/m;

    invoke-direct {v3, v0, v1, p1}, LD/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    sget-object v0, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "integrityToken"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, LC4/A;->c:Ljava/util/regex/Pattern;

    const-string v0, "application/json"

    invoke-static {v0}, LL4/l;->z(Ljava/lang/String;)LC4/A;

    move-result-object v0

    invoke-static {p1, v0}, LW2/B;->j(Ljava/lang/String;LC4/A;)LC4/G;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LC4/E;

    invoke-direct {v2}, LC4/E;-><init>()V

    const-string v3, "https://api.bitactro.com/api/play-integrity"

    invoke-virtual {v2, v3}, LC4/E;->p(Ljava/lang/String;)V

    const-string v3, "ts"

    invoke-virtual {v2, v3, v0}, LC4/E;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v2, v0, p1}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    invoke-virtual {v2}, LC4/E;->b()LC4/F;

    move-result-object p1

    iget-object v0, v1, Lcom/booklal/booklal/MainActivity;->s:LC4/C;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LG4/i;

    invoke-direct {v2, v0, p1}, LG4/i;-><init>(LC4/C;LC4/F;)V

    new-instance p1, LC4/o;

    const/16 v0, 0x10

    invoke-direct {p1, v1, v0}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, p1}, LG4/i;->e(LC4/j;)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/location/Location;

    sget v2, Lcom/booklal/booklal/GetCurrentLocation;->q:I

    check-cast v1, Lcom/booklal/booklal/GetCurrentLocation;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/booklal/booklal/GetCurrentLocation;->j(Landroid/location/Location;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    new-instance v0, LY0/d0;

    invoke-direct {v0, v1}, LY0/d0;-><init>(Lcom/booklal/booklal/GetCurrentLocation;)V

    iput-object v0, v1, Lcom/booklal/booklal/GetCurrentLocation;->c:LY0/d0;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v0}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/booklal/booklal/GetCurrentLocation;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, v1, Lcom/booklal/booklal/GetCurrentLocation;->c:LY0/d0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void

    :pswitch_4
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    sget v0, Lcom/booklal/booklal/BookAdditionSuccessful;->o:I

    check-cast v1, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "showAdPostListing"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Ads"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Showing post listing ad"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const v0, 0x7f110001

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LY0/s;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, LY0/s;-><init>(Lh/i;I)V

    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    goto :goto_2

    :cond_2
    const-string p1, "Ad disabled by config"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
