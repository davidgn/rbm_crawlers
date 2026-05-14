.class public final Lcom/google/android/gms/internal/ads/zzhau;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvm;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzgvm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhau;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhau;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhau;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhau;->zza:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzhaj;-><init>(Lcom/google/android/gms/internal/ads/zzgvi;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
