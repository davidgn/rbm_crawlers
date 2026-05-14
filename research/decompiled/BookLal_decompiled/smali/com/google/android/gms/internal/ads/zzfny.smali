.class public final Lcom/google/android/gms/internal/ads/zzfny;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoh;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/util/List;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfny;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfny;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfny;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfny;->zzc:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhav;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhau;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnx;->zza:Lcom/google/android/gms/internal/ads/zzfnx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhau;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfny;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhau;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfny;->zzb:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;[B)V

    return-object v8
.end method
