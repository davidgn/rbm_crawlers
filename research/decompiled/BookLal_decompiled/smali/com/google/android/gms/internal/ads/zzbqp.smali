.class final Lcom/google/android/gms/internal/ads/zzbqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqt;Lcom/google/android/gms/internal/ads/zzbqh;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqp;->zza:Lcom/google/android/gms/internal/ads/zzbqh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqo;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>(Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzcfb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqp;->zza:Lcom/google/android/gms/internal/ads/zzbqh;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbqn;->zze(Lcom/google/android/gms/internal/ads/zzbqh;Lcom/google/android/gms/internal/ads/zzbqm;)V

    return-object v0
.end method
