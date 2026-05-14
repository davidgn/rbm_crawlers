.class abstract Lcom/google/android/gms/internal/ads/zzhab;
.super Lcom/google/android/gms/internal/ads/zzgzo$zzf;
.source "SourceFile"


# static fields
.field private static final zzbn:Lcom/google/android/gms/internal/ads/zzgzy;

.field private static final zzbo:Lcom/google/android/gms/internal/ads/zzhbd;


# instance fields
.field volatile remainingField:I

.field volatile seenExceptionsField:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhab;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbd;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhab;->zzbo:Lcom/google/android/gms/internal/ads/zzhbd;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzz;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhaa;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzhaa;-><init>([B)V

    move-object v8, v1

    move-object v1, v2

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/zzhab;->zzbn:Lcom/google/android/gms/internal/ads/zzgzy;

    if-eqz v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhab;->zzbo:Lcom/google/android/gms/internal/ads/zzhbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbd;->zza()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "SafeAtomicHelper is broken!"

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzo$zzf;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhab;->seenExceptionsField:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhab;->remainingField:I

    return-void
.end method


# virtual methods
.method public final zzB()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhab;->seenExceptionsField:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhab;->zzf(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhab;->zzbn:Lcom/google/android/gms/internal/ads/zzgzy;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Lcom/google/android/gms/internal/ads/zzhab;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhab;->seenExceptionsField:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final zzC()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhab;->zzbn:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzb(Lcom/google/android/gms/internal/ads/zzhab;)I

    move-result v0

    return v0
.end method

.method public abstract zzf(Ljava/util/Set;)V
.end method
