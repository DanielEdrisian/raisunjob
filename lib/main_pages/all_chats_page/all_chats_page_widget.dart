import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_chats_page_model.dart';
export 'all_chats_page_model.dart';

class AllChatsPageWidget extends StatefulWidget {
  const AllChatsPageWidget({Key? key}) : super(key: key);

  @override
  _AllChatsPageWidgetState createState() => _AllChatsPageWidgetState();
}

class _AllChatsPageWidgetState extends State<AllChatsPageWidget> {
  late AllChatsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllChatsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'AllChatsPage',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF9FAFC),
            body: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 100.0,
                      sigmaY: 0.0,
                    ),
                    child: Image.asset(
                      'assets/images/Rectangle_144.png',
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 1.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 25.0, 20.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'All Chats',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Sora',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Icon(
                                Icons.keyboard_control,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 0.5,
                          color: FlutterFlowTheme.of(context).accent3,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 2.0, 10.0, 0.0),
                            child: StreamBuilder<List<ChatsRecord>>(
                              stream: queryChatsRecord(
                                queryBuilder: (chatsRecord) => chatsRecord
                                    .where('users',
                                        arrayContains: currentUserReference)
                                    .orderBy('last_message_time',
                                        descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<ChatsRecord> listViewChatsRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewChatsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewChatsRecord =
                                        listViewChatsRecordList[listViewIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: StreamBuilder<FFChatInfo>(
                                            stream: FFChatManager.instance
                                                .getChatInfo(
                                                    chatRecord:
                                                        listViewChatsRecord),
                                            builder: (context, snapshot) {
                                              final chatInfo = snapshot.data ??
                                                  FFChatInfo(
                                                      listViewChatsRecord);
                                              return FFChatPreview(
                                                onTap: () => context.pushNamed(
                                                  'ChatPage',
                                                  queryParameters: {
                                                    'chatUser': serializeParam(
                                                      chatInfo.otherUsers
                                                                  .length ==
                                                              1
                                                          ? chatInfo
                                                              .otherUsersList
                                                              .first
                                                          : null,
                                                      ParamType.Document,
                                                    ),
                                                    'chatRef': serializeParam(
                                                      chatInfo
                                                          .chatRecord.reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'chatUser': chatInfo
                                                                .otherUsers
                                                                .length ==
                                                            1
                                                        ? chatInfo
                                                            .otherUsersList
                                                            .first
                                                        : null,
                                                  },
                                                ),
                                                lastChatText: chatInfo
                                                    .chatPreviewMessage(),
                                                lastChatTime:
                                                    listViewChatsRecord
                                                        .lastMessageTime,
                                                seen: listViewChatsRecord
                                                    .lastMessageSeenBy!
                                                    .contains(
                                                        currentUserReference),
                                                title:
                                                    chatInfo.chatPreviewTitle(),
                                                userProfilePic:
                                                    chatInfo.chatPreviewPic(),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                unreadColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                titleTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Sora',
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          lineHeight: 2.0,
                                                        ),
                                                dateTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Sora',
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                previewTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Sora',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          fontSize: 12.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            3.0, 3.0, 3.0, 3.0),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              );
                                            },
                                          ),
                                        ),
                                        Divider(
                                          height: 0.5,
                                          thickness: 0.5,
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
