"""
ROS actionlib message generation.

Just generates .msg files according to a set of conventions.
"""

load("@com_github_nicolov_ros_bazel//:tools/path_utils.bzl",
    "basename",
    "dirname",
    "join_paths"
)

def _msgs_outs_for_action(src, ros_package_name):
    """ Return a list of .msg files generated from an action
    definition. """

    action_name = basename(src).split('.')[0]

    return [
        'actions/' + action_name + x + '.msg' for x in [
            'Action',
            'ActionFeedback',
            'ActionGoal',
            'ActionResult',
            'Feedback',
            'Goal',
            'Result',
        ]
    ]

def _genaction_impl(ctx):
    outpath = ctx.outputs.outs[0].dirname

    ctx.action(
        inputs = ctx.files.src,
        outputs = ctx.outputs.outs,
        executable = ctx.executable._gen_script,
        arguments = [
            '-o', outpath,
            ctx.files.src[0].path,
        ],
    )

genaction = rule(
    implementation = _genaction_impl,
    output_to_genfiles = True,
    attrs = {
        'src': attr.label(allow_files = True),
        '_gen_script': attr.label(
            default = Label('@actionlib_msgs_repo//:genaction'),
            executable = True,
            cfg = 'host'),
        'outs': attr.output_list(), 
    },
)

def generate_actions(action_srcs, ros_package_name):
    # Collection of all .msg created by all the actions.
    action_msgs_outs = []

    for i, src in enumerate(action_srcs):
        this_action_outs = _msgs_outs_for_action(src, ros_package_name)

        genaction(
            name = '_genaction_{}'.format(basename(src).split('.')[0]),
            src = src,
            outs = this_action_outs,
        )

        action_msgs_outs += this_action_outs

    return action_msgs_outs
