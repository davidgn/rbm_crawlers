.class public final Lcom/google/android/gms/internal/ads/zzdot;
.super Lcom/google/android/gms/internal/ads/zzcwy;
.source "SourceFile"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgvm;


# instance fields
.field private final zzA:Ljava/util/List;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdpg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdpx;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzilo;

.field private zzo:Lcom/google/android/gms/internal/ads/zzdqv;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private final zzt:Lcom/google/android/gms/internal/ads/zzcdb;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzazz;

.field private final zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzw:Landroid/content/Context;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzdov;

.field private final zzy:Lcom/google/android/gms/internal/ads/zzesk;

.field private final zzz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "2011"

    const-string v5, "2007"

    const-string v0, "3010"

    const-string v1, "3008"

    const-string v2, "1005"

    const-string v3, "1009"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzn(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzc:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdoy;Lcom/google/android/gms/internal/ads/zzdpg;Lcom/google/android/gms/internal/ads/zzdpx;Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzcdb;Lcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdov;Lcom/google/android/gms/internal/ads/zzesk;Lcom/google/android/gms/internal/ads/zzbdy;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcwx;)V

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzg:Lcom/google/android/gms/internal/ads/zzdpx;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzj:Lcom/google/android/gms/internal/ads/zzilo;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzk:Lcom/google/android/gms/internal/ads/zzilo;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzl:Lcom/google/android/gms/internal/ads/zzilo;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzm:Lcom/google/android/gms/internal/ads/zzilo;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzn:Lcom/google/android/gms/internal/ads/zzilo;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzt:Lcom/google/android/gms/internal/ads/zzcdb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzu:Lcom/google/android/gms/internal/ads/zzazz;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzw:Landroid/content/Context;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzx:Lcom/google/android/gms/internal/ads/zzdov;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzy:Lcom/google/android/gms/internal/ads/zzesk;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzz:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzA:Ljava/util/List;

    return-void
.end method

.method public static zzI(Landroid/view/View;)Z
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzlX:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzy(Landroid/view/View;)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbhv;->zzlY:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v5, p0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private final declared-synchronized zzac(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzp:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzg:Lcom/google/android/gms/internal/ads/zzdpx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpx;->zza(Lcom/google/android/gms/internal/ads/zzdqv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzj()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzk()Ljava/util/Map;

    move-result-object v4

    move-object v5, p1

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdpg;->zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzdz:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzu:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazz;->zzb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzazu;->zzh(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcv:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzak:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzaj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzz:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzw:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzA:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zza(Lcom/google/android/gms/internal/ads/zzbdv;)V

    goto :goto_1

    :cond_5
    :goto_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzg()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzg()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzt:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zza(Lcom/google/android/gms/internal/ads/zzbdv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdpg;->zzb(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdA()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzg()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzg()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzt:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb(Lcom/google/android/gms/internal/ads/zzbdv;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    return-void
.end method

.method private final declared-synchronized zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzg:Lcom/google/android/gms/internal/ads/zzdpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzc(Lcom/google/android/gms/internal/ads/zzdqv;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzr:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdot;->zzag(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzpb:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzpc:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdot;->zzI(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzr:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzpd:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v1, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v6

    int-to-double v0, v1

    int-to-double v5, v5

    mul-double/2addr v0, v3

    cmpl-double v0, v5, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzr:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzag(Ljava/util/Map;)Landroid/view/View;
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdot;->zzc:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzah()Landroid/widget/ImageView$ScaleType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Ad should be associated with an ad view before calling getMediaviewScaleType()"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpx;->zza:Landroid/widget/ImageView$ScaleType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private final zzai(Ljava/lang/String;Z)V
    .locals 2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzgr:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "Google"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzX()LN2/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdoj;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdot;->zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method

.method private final zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeks;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzW()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzekn;->zzh(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzr(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzB(Lcom/google/android/gms/ads/internal/client/zzdc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzs(Lcom/google/android/gms/ads/internal/client/zzdc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzC()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzD()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdpr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdoo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdoo;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzE(Landroid/view/View;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzmW:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v0, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdpr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdop;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdop;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Landroid/view/View;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzF()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzh()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzG()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzu()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzH()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzv()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzJ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zzK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzeks;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzW()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v5

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Omid display and video webview are null. Skipping initialization."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzg()Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzg()Lcom/google/android/gms/internal/ads/zzfkg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkg;->zzc()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    if-eq v6, v8, :cond_5

    if-eq v1, v8, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const-string v1, "UNKNOWN"

    goto :goto_1

    :cond_3
    const-string v1, "DISPLAY"

    goto :goto_1

    :cond_4
    const-string v1, "VIDEO"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown omid media type: "

    const-string v5, ". Not initializing Omid."

    invoke-static {v4, v2, v1, v5}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-eqz v4, :cond_6

    move v1, v7

    move v7, v8

    goto :goto_2

    :cond_6
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Omid media type was display but there was no display webview."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v5, :cond_12

    move v1, v8

    :goto_2
    if-eqz v7, :cond_8

    move-object v14, v3

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    const-string v4, "javascript"

    move-object v14, v4

    move-object v4, v5

    goto :goto_3

    :cond_9
    move-object v4, v3

    move-object v14, v4

    :goto_3
    if-eqz v4, :cond_11

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzw:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/zzekn;->zza(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Failed to initialize omid in InternalNativeAd"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v7, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v6, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-static {v7, v8}, LC/a;->e(II)I

    move-result v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v9, v10

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_b

    sget-object v6, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzeko;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzekp;

    :goto_4
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_5

    :cond_b
    sget-object v6, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_c

    sget-object v7, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzekp;

    goto :goto_4

    :cond_c
    sget-object v7, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzekp;

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v9

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcjz;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfjk;->zzal:Ljava/lang/String;

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v15, p1

    move-object/from16 v18, v6

    invoke-interface/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzekn;->zzd(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekp;Lcom/google/android/gms/internal/ads/zzeko;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v6

    if-nez v6, :cond_d

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Failed to create omid session in InternalNativeAd"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_d
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzdoy;->zzq(Lcom/google/android/gms/internal/ads/zzeks;)V

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzcjz;->zzak(Lcom/google/android/gms/internal/ads/zzeks;)V

    if-eqz v1, :cond_f

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v1

    if-eqz v5, :cond_e

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzekn;->zzh(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    :cond_e
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdot;->zzs:Z

    :cond_f
    if-eqz p2, :cond_10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzekn;->zze(Lcom/google/android/gms/internal/ads/zzftl;)V

    new-instance v1, Lr/b;

    invoke-direct {v1}, Lr/k;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_10
    return-object v6

    :cond_11
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Webview is null in InternalNativeAd"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object v3

    :cond_12
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Omid media type was video but there was no video webview."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    :cond_13
    :goto_6
    return-object v3
.end method

.method public final zzM()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzN(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzgr:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzY()Lcom/google/android/gms/internal/ads/zzcfb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdok;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzZ()Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdot;->zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeks;)V

    return-void
.end method

.method public final zzO(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzZ()Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzh:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzekn;->zzg(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzP()Lcom/google/android/gms/internal/ads/zzdov;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzx:Lcom/google/android/gms/internal/ads/zzdov;

    return-object v0
.end method

.method public final declared-synchronized zzQ(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzy:Lcom/google/android/gms/internal/ads/zzesk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzesk;->zza(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzR(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Video webview is null"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdoq;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;Lorg/json/JSONObject;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Error reading event signals"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic zzS()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Google"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zze()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzm:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrp;->zze(Lcom/google/android/gms/internal/ads/zzbrj;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zzc()Lcom/google/android/gms/internal/ads/zzbmu;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdot;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzl:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbna;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmu;->zze(Lcom/google/android/gms/internal/ads/zzbna;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbmn;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdot;->zzL(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzeks;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzn:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbma;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbmn;->zze(Lcom/google/android/gms/internal/ads/zzbma;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb()Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdot;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzk:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbme;->zze(Lcom/google/android/gms/internal/ads/zzblv;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzi:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zza()Lcom/google/android/gms/internal/ads/zzbmh;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdot;->zzai(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzj:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(Lcom/google/android/gms/internal/ads/zzblx;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :goto_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic zzT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzae()V

    return-void
.end method

.method public final synthetic zzU(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzac(Lcom/google/android/gms/internal/ads/zzdqv;)V

    return-void
.end method

.method public final synthetic zzV(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzad(Lcom/google/android/gms/internal/ads/zzdqv;)V

    return-void
.end method

.method public final synthetic zzW(Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzj()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v5

    move v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdpg;->zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method public final synthetic zzX(Landroid/view/View;ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzdF()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzi()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzj()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    move-object v0, v1

    move-object v1, p1

    move v5, p2

    move v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdpg;->zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method public final synthetic zzY(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdot;->zzaj(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeks;)V

    return-void
.end method

.method public final synthetic zzZ()Lcom/google/android/gms/internal/ads/zzdoy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    return-object v0
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic zzaa()Lcom/google/android/gms/internal/ads/zzdqv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    return-object v0
.end method

.method public final synthetic zzab()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzz:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized zzb()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzc(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zze(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzp:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdol;-><init>(Lcom/google/android/gms/internal/ads/zzdot;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwy;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zze(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzz(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzq:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzk(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzct:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdom;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzdqv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzac(Lcom/google/android/gms/internal/ads/zzdqv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzct:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdon;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdon;-><init>(Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzdqv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdot;->zzad(Lcom/google/android/gms/internal/ads/zzdqv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzg:Lcom/google/android/gms/internal/ads/zzdpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzo:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzb(Lcom/google/android/gms/internal/ads/zzdqv;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpg;->zzc(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzs:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lr/b;

    invoke-direct {p2}, Lr/k;-><init>()V

    const-string p3, "onSdkAdUserInteractionClick"

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdor;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdor;-><init>(Lcom/google/android/gms/internal/ads/zzdot;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzd:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zze:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdos;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdos;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcwy;->zzj()V

    return-void
.end method

.method public final declared-synchronized zzk(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdpg;->zzj(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzu(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdot;->zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzcv:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzak:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_5

    sget-object p4, Lcom/google/android/gms/internal/ads/zzbhv;->zzeM:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdot;->zzI(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdot;->zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdot;->zzae(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdot;->zzaf(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzv(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzl(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdot;->zzah()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzm(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzx(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzo(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzy(Lcom/google/android/gms/internal/ads/zzbmx;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzp(Lcom/google/android/gms/internal/ads/zzbmx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzz()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdot;->zzf:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
