.class final synthetic Lcom/google/android/gms/internal/ads/zzgof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/k;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgcf;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgof;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgof;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    return-void
.end method


# virtual methods
.method public final synthetic attachCompleter(Landroidx/concurrent/futures/j;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgof;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgof;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoj;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcf;Landroidx/concurrent/futures/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
