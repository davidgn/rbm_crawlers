.class public abstract LK0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK0/b;

.field public static final b:LK0/b;

.field public static final c:LK0/b;

.field public static final d:LK0/b;

.field public static final e:LK0/b;

.field public static final f:LK0/l;

.field public static final g:LK0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK0/b;

    const-string v1, "VISUAL_STATE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "OFF_SCREEN_PRERASTER"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_ENABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "START_SAFE_BROWSING"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_WHITELIST"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v2, "SAFE_BROWSING_ALLOWLIST"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "RECEIVE_HTTP_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_HIT"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->a:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "POST_WEB_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "GET_WEB_VIEW_CLIENT"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "GET_WEB_CHROME_CLIENT"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "GET_WEB_VIEW_RENDERER"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/i;

    invoke-direct {v0}, LK0/i;-><init>()V

    new-instance v0, LK0/i;

    invoke-direct {v0}, LK0/i;-><init>()V

    new-instance v0, LK0/b;

    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/k;

    invoke-direct {v0}, LK0/k;-><init>()V

    new-instance v0, LK0/b;

    const-string v1, "PROXY_OVERRIDE"

    const-string v2, "PROXY_OVERRIDE:3"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "MULTI_PROCESS"

    const-string v2, "MULTI_PROCESS_QUERY"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->b:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "FORCE_DARK"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "FORCE_DARK_STRATEGY"

    const-string v2, "FORCE_DARK_BEHAVIOR"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEB_MESSAGE_LISTENER"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->c:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "DOCUMENT_START_SCRIPT"

    const-string v2, "DOCUMENT_START_SCRIPT:1"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->d:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "GET_VARIATIONS_HEADER"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->e:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "GET_COOKIE_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v1}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "USER_AGENT_METADATA"

    const-string v2, "USER_AGENT_METADATA"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/l;

    const-string v1, "MULTI_PROFILE"

    const-string v2, "MULTI_PROFILE"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->f:LK0/l;

    new-instance v0, LK0/b;

    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    const-string v2, "ATTRIBUTION_BEHAVIOR"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "MUTE_AUDIO"

    const-string v2, "MUTE_AUDIO"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LK0/m;->g:LK0/b;

    new-instance v0, LK0/b;

    const-string v1, "WEB_AUTHENTICATION"

    const-string v2, "WEB_AUTHENTICATION"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "SPECULATIVE_LOADING_STATUS"

    const-string v2, "SPECULATIVE_LOADING"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK0/b;

    const-string v1, "BACK_FORWARD_CACHE"

    const-string v2, "BACK_FORWARD_CACHE"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LK0/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ljava/lang/UnsupportedOperationException;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
