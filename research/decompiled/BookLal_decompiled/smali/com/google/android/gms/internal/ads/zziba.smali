.class public final Lcom/google/android/gms/internal/ads/zziba;
.super Lcom/google/android/gms/internal/ads/zzial;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zziba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zziba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziba;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zziba;->zza:Lcom/google/android/gms/internal/ads/zziba;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzial;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzibe;Lcom/google/android/gms/internal/ads/zziaf;)V
    .locals 2

    if-eqz p2, :cond_7

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zziag;

    if-nez v0, :cond_7

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zziaj;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaf;->zzg()Lcom/google/android/gms/internal/ads/zziaj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaj;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaj;->zzh()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzibe;->zzi(Ljava/lang/Number;)Lcom/google/android/gms/internal/ads/zzibe;

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaj;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaj;->zzb()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzibe;->zzh(Z)Lcom/google/android/gms/internal/ads/zzibe;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaj;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzibe;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzibe;

    return-void

    :cond_2
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zziae;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibe;->zzb()Lcom/google/android/gms/internal/ads/zzibe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaf;->zzf()Lcom/google/android/gms/internal/ads/zziae;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziae;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziaf;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zziba;->zza(Lcom/google/android/gms/internal/ads/zzibe;Lcom/google/android/gms/internal/ads/zziaf;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibe;->zzc()Lcom/google/android/gms/internal/ads/zzibe;

    return-void

    :cond_4
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zziah;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibe;->zzd()Lcom/google/android/gms/internal/ads/zzibe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziaf;->zze()Lcom/google/android/gms/internal/ads/zziah;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zziah;->zzb()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzibe;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzibe;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziaf;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zziba;->zza(Lcom/google/android/gms/internal/ads/zzibe;Lcom/google/android/gms/internal/ads/zziaf;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibe;->zze()Lcom/google/android/gms/internal/ads/zzibe;

    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Couldn\'t write "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibe;->zzj()Lcom/google/android/gms/internal/ads/zzibe;

    return-void
.end method
